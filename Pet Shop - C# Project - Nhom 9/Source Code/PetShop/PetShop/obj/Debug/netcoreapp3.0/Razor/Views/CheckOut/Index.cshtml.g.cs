#pragma checksum "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "fbd118539bc505d8dd945f09a9c032a96a47b8c7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_CheckOut_Index), @"mvc.1.0.view", @"/Views/CheckOut/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\_ViewImports.cshtml"
using PetShop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\_ViewImports.cshtml"
using PetShop.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"fbd118539bc505d8dd945f09a9c032a96a47b8c7", @"/Views/CheckOut/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d9cb11fa8dfc4463cdadb982486cbc1eda18e7a4", @"/Views/_ViewImports.cshtml")]
    public class Views_CheckOut_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Dictionary<string, PetShop.DTO.Accessory>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("checkout-form"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "CheckOut", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CheckOut", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "POST", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("checkout-form"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/checkout.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
  
    ViewData["Title"] = "CheckOut";

#line default
#line hidden
#nullable disable
            WriteLiteral("<!-- Page info -->\r\n<div class=\"page-top-info\">\r\n    <div class=\"container\">\r\n        <h4>Check out</h4>\r\n        <div class=\"site-pagination\">\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "fbd118539bc505d8dd945f09a9c032a96a47b8c76582", async() => {
                WriteLiteral("Home");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@" /
            <a href=""#"">Check out</a>
        </div>
    </div>
</div>
<!-- Page info end -->
<!-- checkout section  -->
<section class=""checkout-section spad"">
    <div class=""container"">
        <div class=""row"">
            <div class=""col-lg-8 order-2 order-lg-1"">
                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "fbd118539bc505d8dd945f09a9c032a96a47b8c78247", async() => {
                WriteLiteral(@"
                    <div class=""cf-title"">Billing Address</div>
                    <div class=""row"">
                        <div class=""col-md-3"">
                            <p>*Billing Information:</p>
                        </div>
                    </div>
                    <div class=""row address-inputs"">
                        <div class=""col-md-12"">
                            Address: <input type=""text"" name=""DeliveryAddress"" placeholder=""Address""");
                BeginWriteAttribute("value", " value=\"", 1186, "\"", 1222, 1);
#nullable restore
#line 30 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
WriteAttributeValue("", 1194, ViewData["deliveryAddress"], 1194, 28, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" pattern=\".{1,70}\">\r\n                            Phone: <input type=\"text\" name=\"DeliveryPhone\" placeholder=\"Phone no.\"");
                BeginWriteAttribute("value", " value=\"", 1342, "\"", 1376, 1);
#nullable restore
#line 31 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
WriteAttributeValue("", 1350, ViewData["deliveryPhone"], 1350, 26, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(@" pattern=""[0-9]{10,16}"">
                        </div>
                    </div>
                    <div class=""cf-title"">Delievery Info</div>
                    <div class=""mb-5 text-center"">
                        <h4>Free Shipping</h4>
                    </div>
                    <div class=""cf-title"">Payment</div>
                    <ul class=""payment-list text-center"">
                        <li>Pay when you get the package</li>
                    </ul>
                    <button type=""submit"" class=""site-btn submit-order-btn"">Place Order</button>
                ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_5.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_6);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n            <div class=\"col-lg-4 order-1 order-lg-2\">\r\n                <div class=\"checkout-cart\">\r\n                    <h3>Your Cart</h3>\r\n                    <ul class=\"product-list\">\r\n");
#nullable restore
#line 49 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
                         foreach (var item in Model)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li>\r\n                                <div class=\"pl-thumb\"><img");
            BeginWriteAttribute("src", " src=\"", 2364, "\"", 2402, 2);
            WriteAttributeValue("", 2370, "../img/product/", 2370, 15, true);
#nullable restore
#line 52 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
WriteAttributeValue("", 2385, item.Value.Image, 2385, 17, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" onerror=\"errorImage()\"></div>\r\n                                <h6>");
#nullable restore
#line 53 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
                               Write(item.Value.AccName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h6>\r\n                                <p class=\"current-price\">$");
#nullable restore
#line 54 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
                                                      Write(string.Format($"{item.Value.Price * (1 - item.Value.SalePercent):0.00}"));

#line default
#line hidden
#nullable disable
            WriteLiteral(" x ");
#nullable restore
#line 54 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
                                                                                                                                   Write(item.Value.Quantity);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                            </li>\r\n");
#nullable restore
#line 56 "D:\Google Drive\C#\Pet Shop - C# Project - Nhom 9\Source Code\PetShop\PetShop\Views\CheckOut\Index.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                    </ul>
                    <ul class=""price-list"">
                        <li>Total<span class=""total-price""></span></li>
                        <li>Shipping<span>free</span></li>
                        <li class=""total"">Total<span class=""total-price""></span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "fbd118539bc505d8dd945f09a9c032a96a47b8c715356", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_7);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n");
            }
            );
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Dictionary<string, PetShop.DTO.Accessory>> Html { get; private set; }
    }
}
#pragma warning restore 1591