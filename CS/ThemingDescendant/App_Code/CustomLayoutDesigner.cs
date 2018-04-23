using System.ComponentModel;
using DevExpress.Web;
using DevExpress.Web.Design;

namespace CustomLayout {
    [ToolboxItem(false)]
    public class CustomLayoutDesigner : ASPxFormLayoutDesigner {
        public override void Initialize(IComponent component) {
            base.Initialize(component);
            RegisterTagPrefix(typeof(ASPxFormLayout));
        }
    }
}