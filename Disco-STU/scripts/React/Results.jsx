let stars = [], resultList = [];
for (i = 0; i < 10; i++) {
    stars.push(
        <div key={i} className="star"></div>
    );
}
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
        filter.lastYear = parseInt(getParameterByName('lastYear'));
        filter.type = getParameterByName('type');
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
        for (i = 0; i < this.state.result.length; i++) {
            if ((this.state.result[i].Titulo.toLowerCase().indexOf(filter.search) >= 0 ||
                this.state.result[i].Interprete.toLowerCase().indexOf(filter.search) >= 0) &&
                this.state.result[i].Agno >= filter.firstYear &&
                this.state.result[i].Agno <= filter.lastYear /*|| 
                this.state.result[i].idTipo == filter.type*/) {
                resultList.push(
                    <div key={i} className="block">
                    <div className="info">
                        <span>{this.state.result[i].Titulo} <small>{
                               (this.state.result[i].Agno != null) ? ("(" + this.state.result[i].Agno + ")") : ""
                            }</small></span>
                        <span><div className="chip">{this.state.result[i].Interprete}</div></span>
                        <span><div className="stars">5  <div className="star"></div></div></span>
                    </div>
                    <div className="setStars">{ stars}</div>
                </div>
                );
            }
        }
        console.log(resultList);
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