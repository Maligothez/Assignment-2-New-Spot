using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Http;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public class FilesController : ApiController
    {
        public HttpResponseMessage Get(int id)
        {
            var db = new ApplicationDbContext();

            var result = db.Files.FirstOrDefault(x => x.FileId == id);

            if (result == null)
                return Request.CreateResponse(HttpStatusCode.NotFound);

            var message = new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new ByteArrayContent(result.Content)
            };
            message.Content.Headers.ContentDisposition =
                new ContentDispositionHeaderValue("attachment") {FileName = result.Name};
            message.Content.Headers.ContentType = new MediaTypeHeaderValue(MimeMapping.GetMimeMapping(result.Name));
            message.Content.Headers.ContentLength = result.Size;

            return message;
        }
    }
}