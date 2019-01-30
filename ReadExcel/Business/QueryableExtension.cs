using System.Linq;


namespace Service.Business
{
    public static class QueryableExtension
    {
        public static QueryableCondition<TSource> If<TSource>(this IQueryable<TSource> queryable, bool condition)
        {
            return new QueryableCondition<TSource>(queryable, condition);
        }
    }
}
