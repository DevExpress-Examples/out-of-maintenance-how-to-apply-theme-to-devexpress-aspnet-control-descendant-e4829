using System.ComponentModel;
using DevExpress.Web.ASPxFormLayout;
using DevExpress.Web.ASPxFormLayout.Design;

namespace CustomLayout {
    [ToolboxItem(false)]
    public class CustomLayoutDesigner : ASPxFormLayoutDesigner {
        public override void Initialize(IComponent component) {
            base.Initialize(component);
            RegisterTagPrefix(typeof(ASPxFormLayout));
        }
    }
}