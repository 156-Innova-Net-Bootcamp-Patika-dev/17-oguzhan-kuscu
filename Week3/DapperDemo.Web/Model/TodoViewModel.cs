using DapperDemo.Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DapperDemo.Web.Model
{
    public class TodoViewModel
    {
        public List<TodoItemDto> TodoItems { get; set; }
    }
}
