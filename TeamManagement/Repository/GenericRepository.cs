using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TeamManagement.Models;


namespace TeamManagement.Repository
{
    public class GenericRepository   
        //: IGenericRepository<TEntity> where TEntity : class
    {
        public readonly TeamManagementContext _context;
    //    private readonly DbSet<TEntity> _dbSet;

        public GenericRepository(TeamManagementContext context)
        {
            _context = context;
         //   _dbSet = context.Set<TEntity>();
        }
        public Task DeleteAsync(object id)
        {
            throw new NotImplementedException();
        }

        //public Task InsertAsync(TEntity entity)
        //{
        //    throw new NotImplementedException();
        //}

        //public Task UpdateAsync(TEntity entityToUpdate)
        //{
        //    throw new NotImplementedException();
        //}
    }
}
