using DAL;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<InternDAL>();
builder.Services.AddScoped<GraduateDAL>(); //dependecy injection
builder.Services.AddScoped<TraumaDAL>();             
builder.Services.AddScoped<HarassmentDAL>();             
builder.Services.AddScoped<ChildDAL>();             
builder.Services.AddScoped<OldDAL>();             
builder.Services.AddScoped<EmployedDAL>();             
builder.Services.AddScoped<UnemployedDAL>();             
builder.Services.AddScoped<ParentsDAL>();             
builder.Services.AddScoped<LoginDAL>();             
builder.Services.AddScoped<SignupDAL>();             



var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
