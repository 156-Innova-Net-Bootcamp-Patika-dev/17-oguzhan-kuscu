using System.Collections.Generic;
using System.Threading.Tasks;
using DapperDemo.Application;
using DapperDemo.Application.Models;
using DapperDemo.Application.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace DapperTodoDemo.Web.Pages
{
    public class Todos : PageModel
    {
        public List<TodoItemDto> TodoItems { get; set; }
        
        private readonly ITodoItemAppService _todoItemAppService;

        public Todos(ITodoItemAppService todoItemAppService)
        {
            _todoItemAppService = todoItemAppService;
        }

        public async Task OnGetAsync()
        {
            TodoItems = await _todoItemAppService.GetTodosAsync();
        }
    }
}