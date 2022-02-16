﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DapperDemo.Application.Models;
namespace DapperDemo.Application.Services
{
    public interface ITodoItemAppService
    {
        Task<List<TodoItemDto>> GetTodosAsync();

        Task<TodoItemDto> GetAsync(Guid id);

        Task CreateAsync(CreateUpdateTodoItemDto todoItem);

        Task UpdateAsync(Guid id, CreateUpdateTodoItemDto todoItem);

        Task DeleteAsync(Guid id);
    }
}
