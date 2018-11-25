using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MaeTerra.Dados.Anuncio
{
    public interface IAnuncioDados
    {
        IQueryable<Anuncio> BuscaAnuncios();

        Anuncio AlterarAnuncio(Anuncio anuncio);

        Anuncio SalvarAnuncio(Anuncio anuncio);
    }
}
