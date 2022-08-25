namespace CustomerManagement.Interfaces
{
    public interface IRepository<TEntity>
    {
        TEntity Create(TEntity entity);
        TEntity Read(int entityId);
        List<TEntity> ReadAll();
        bool Update(TEntity entity);
        void Delete(int entityId);
    }
}

