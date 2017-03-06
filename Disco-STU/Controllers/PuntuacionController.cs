﻿using System;
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
    public class PuntuacionController : ApiController
    {
        private DiscoSTUEntities db = new DiscoSTUEntities();

        // GET: api/Puntuacion
        public IQueryable<Puntuacion> GetPuntuacion()
        {
            return db.Puntuacion;
        }

        // GET: api/Puntuacion/5
        [ResponseType(typeof(Puntuacion))]
        public IHttpActionResult GetPuntuacion(int id)
        {
            Puntuacion puntuacion = db.Puntuacion.Find(id);
            if (puntuacion == null)
            {
                return NotFound();
            }

            return Ok(puntuacion);
        }

        // PUT: api/Puntuacion/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPuntuacion(int id, Puntuacion puntuacion)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != puntuacion.Id)
            {
                return BadRequest();
            }

            db.Entry(puntuacion).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PuntuacionExists(id))
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

        // POST: api/Puntuacion
        [ResponseType(typeof(Puntuacion))]
        public IHttpActionResult PostPuntuacion(Puntuacion puntuacion)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Puntuacion.Add(puntuacion);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (PuntuacionExists(puntuacion.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = puntuacion.Id }, puntuacion);
        }

        // DELETE: api/Puntuacion/5
        [ResponseType(typeof(Puntuacion))]
        public IHttpActionResult DeletePuntuacion(int id)
        {
            Puntuacion puntuacion = db.Puntuacion.Find(id);
            if (puntuacion == null)
            {
                return NotFound();
            }

            db.Puntuacion.Remove(puntuacion);
            db.SaveChanges();

            return Ok(puntuacion);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PuntuacionExists(int id)
        {
            return db.Puntuacion.Count(e => e.Id == id) > 0;
        }
    }
}