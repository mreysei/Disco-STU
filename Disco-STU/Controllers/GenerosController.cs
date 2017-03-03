using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Disco_STU.Models;

namespace Disco_STU.Controllers
{
    public class GenerosController : ApiController
    {
        private DiscoSTUEntities db = new DiscoSTUEntities();

        // GET: api/Generos
        public IQueryable<v_tipo> Getv_tipo()
        {
            return db.v_tipo;
        }

        // GET: api/Generos/5
        [ResponseType(typeof(v_tipo))]
        public IHttpActionResult Getv_tipo(int id)
        {
            v_tipo v_tipo = db.v_tipo.Find(id);
            if (v_tipo == null)
            {
                return NotFound();
            }

            return Ok(v_tipo);
        }

        // PUT: api/Generos/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putv_tipo(int id, v_tipo v_tipo)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != v_tipo.idTipo)
            {
                return BadRequest();
            }

            db.Entry(v_tipo).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!v_tipoExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Generos
        [ResponseType(typeof(v_tipo))]
        public IHttpActionResult Postv_tipo(v_tipo v_tipo)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.v_tipo.Add(v_tipo);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (v_tipoExists(v_tipo.idTipo))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = v_tipo.idTipo }, v_tipo);
        }

        // DELETE: api/Generos/5
        [ResponseType(typeof(v_tipo))]
        public IHttpActionResult Deletev_tipo(int id)
        {
            v_tipo v_tipo = db.v_tipo.Find(id);
            if (v_tipo == null)
            {
                return NotFound();
            }

            db.v_tipo.Remove(v_tipo);
            db.SaveChanges();

            return Ok(v_tipo);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool v_tipoExists(int id)
        {
            return db.v_tipo.Count(e => e.idTipo == id) > 0;
        }
    }
}