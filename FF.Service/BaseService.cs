using NLog;


namespace FF.Service
{
    public class BaseService
    {
        protected Logger Log { get; private set; }

        protected BaseService()
        {
            Log = LogManager.GetLogger(GetType().FullName);
        }

    }
}
