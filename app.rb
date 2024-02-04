require "sinatra"
require "sinatra/reloader"

# Redirect root to /add
get("/") do
  redirect("/add")
end

# Display the addition form
get("/add") do
  erb(:add_form)
end

# Handle addition form submission
post("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

# Display the subtraction form
get("/subtract") do
  erb(:sub_form)
end

# Handle subtraction form submission
post("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num - @first_num
  erb(:sub_result)
end

# Display the multiplication form
get("/multiply") do
  erb(:mult_form)
end

# Handle multiplication form submission
post("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num * @second_num
  erb(:mult_result)
end

# Display the division form
get("/divide") do
  erb(:div_form)
end

# Handle division form submission
post("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  # Ensure the second_num is not zero to avoid division by zero
  if @second_num != 0
    @result = @first_num / @second_num
  else
    @result = "Cannot divide by zero!"
  end

  erb(:div_result)
end
