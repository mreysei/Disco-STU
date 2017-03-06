let stars = [], resultList = [];
let controlTime = true;
for (i = 0; i < 10; i++) {
    stars.push(
        <div key={i} id={i} className="star"></div>
    );
}
let login = $('#usuario').attr('class') == "card" ? true : false ;
const filter = {
    search: '',
    firstYear: 1970,
    lastYear: 1990,
    type: 0
}
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var Resultados = React.createClass({
    getInitialState: function () {
        return { result: [] };
    },
    componentDidMount: function () {
        filter.search = getParameterByName('search').toLowerCase();
        filter.firstYear = parseInt(getParameterByName('firstYear'));
        filter.firstYear = isNaN(filter.firstYear) ? 1970 : filter.firstYear;
        filter.lastYear = parseInt(getParameterByName('lastYear'));
        filter.lastYear = isNaN(filter.lastYear) ? 1990 : filter.lastYear;
        filter.type = parseInt(getParameterByName('type'));
        filter.type = isNaN(filter.type) ? null : filter.type;
        $.ajax({
            url: this.props.url,
            dataType: 'json',
            success: function (data) {
                var json = { result: data };
                this.setState(json)
            }.bind(this),
            error: function (xhr, status, err) {
                console.error(this.props.url, status, err.toString())
            }.bind(this)
        });
    },
    render: function () {
        let id = 0;
        for (i = 0; i < this.state.result.length; i++) {
            let agno = this.state.result[i].Agno == null ? 1970 : this.state.result[i].Agno;
            if ((((this.state.result[i].Titulo.toLowerCase().indexOf(filter.search) >= 0 ||
                this.state.result[i].Interprete.toLowerCase().indexOf(filter.search) >= 0) &&
                agno >= filter.firstYear && agno <= filter.lastYear && filter.type == null) ||
                this.state.result[i].IdTipo == filter.type) &&
                this.state.result[i].IdDisco != id) {
                resultList.push(
                    <div key={i} id={this.state.result[i].IdDisco} className="block">
                        <div className="info">
                            <span>{this.state.result[i].Titulo} <small>{
                                   (this.state.result[i].Agno != null) ? ("(" + this.state.result[i].Agno + ")") : ""
                                }</small></span>
                            <span><div className="chip">{this.state.result[i].Interprete}</div></span>
                            <span><div className="stars" id={ login }>
                                {this.state.result[i].mediaPuntuacion == null ? 0 : this.state.result[i].mediaPuntuacion}  
                                <div className="star"></div>
                            </div></span>
                        </div>
                        <div className="setStars">{ stars }</div>
                    </div>
                );
                id = this.state.result[i].IdDisco;
            }
        }
        if (id == 0 && !controlTime) {
            resultList.push(<div key="0">No se han encontrado coincidencias</div>)
        }
        controlTime = false;
        return (
            <div>
                <h1>Resultados</h1>
                {resultList}
            </div>
        );
    }
});
ReactDOM.render(
    <Resultados url="api/Results"/>,
    document.getElementById('results')
);