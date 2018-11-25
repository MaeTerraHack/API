using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MaeTerra.Negocios.Anuncio
{
    public interface IAnuncioNegocios
    {
        IList<Anuncio> BuscaAnuncios(int codUsuario);
        IList<AnuncioHistorico> BuscaAnuncioHistoricos(int codAnuncio);
    }
}
