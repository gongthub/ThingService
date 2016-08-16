using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vlinker.Common.ApiInvoker.Utils
{
    public class JsonUtil
    {
        public static string SerializeDictionary(Dictionary<string, object> dic)
        {

            StringBuilder sb = new StringBuilder();
            sb.Append("{");

            foreach (KeyValuePair<string, Object> kv in dic)
            {
                sb.Append("\"" + kv.Key.ToString() + "\":" + "\"" + kv.Value.ToString() +  "\"" );
            }
            sb.Append("}");

            return sb.ToString();
        }
    }
}
