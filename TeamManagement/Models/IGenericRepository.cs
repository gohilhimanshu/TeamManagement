using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TeamManagement.Models
{
    public interface IGenericRepository<TEntity> where TEntity : class
    {
        Task DeleteAsync(object id);
        //Task InsertAsync(TEntity entity);
        //Task UpdateAsync(TEntity entityToUpdate);
    }
}
