using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MaeTerra.Infraestrutura.EDMX;
using System.Data.Entity;

namespace MaeTerra.Dados.Anuncios
{
    public class AnuncioDados : IAnuncioDados
    {
        #region ATRIBUTOS E CONSTRUTOR
        private UnileverDBEntities db = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public AnuncioDados(UnileverDBEntities _db)
        {
            this.db = _db;
        }
        #endregion

        #region LOCAL
        /// <summary>
        /// Metodo responsavel por buscar todos os anuncios
        /// </summary>
        /// <returns></returns> 
        public IQueryable<Anuncio> BuscaAnuncios()
        {
            return db.Anuncios;
        }

        /// <summary>
        /// Metodo responsavel por alterar o anuncio 
        /// </summary>
        /// <param name="anuncio"></param>
        public Anuncio AlterarAnuncio(Anuncio anuncio)
        {
            db.Entry<Anuncio>(anuncio).State = EntityState.Modified;
            db.SaveChanges();

            return anuncio;
        }

        /// <summary>
        /// Metodo responsavel por salvar o anuncio
        /// </summary>
        /// <param name="anuncio"></param>
        public Anuncio SalvarAnuncio(Anuncio anuncio)
        {
            this.db.Anuncios.Add(anuncio);
            db.SaveChanges();

            return anuncio;
        }
        #endregion
    }
}
