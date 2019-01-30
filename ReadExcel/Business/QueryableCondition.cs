using System;
using System.Linq;
using System.Linq.Expressions;

namespace Service.Business
{
    public class QueryableCondition<TSource>
    {
        private readonly IQueryable<TSource> queryable;
        private readonly bool conditionState;

        public QueryableCondition(IQueryable<TSource> queryable, bool conditionState)
        {
            this.queryable = queryable;
            this.conditionState = conditionState;
        }

        public IQueryable<TSource> Where(Expression<Func<TSource, bool>> predicate)
        {
            return conditionState ? queryable.Where(predicate) : queryable;
        }
    }
}
