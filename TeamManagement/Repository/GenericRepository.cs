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
