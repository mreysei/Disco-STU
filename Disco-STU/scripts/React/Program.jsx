let types = [];
let stars = [], resultList = [];
for (i = 0; i < 10; i++){
    stars.push(
        <div key={i} className="star"></div> 
    );
}

var Program = React.createClass({
    getInitialState: function () {
        return {
            types: [],
            results: [],
            ranking: []
        };
    },
    getAjax: function (url, name) {
        $.ajax({
            url,
            dataType: 'json',
            success: function (data) {
                var json = { name : data };
                this.setState(json)
            }.bind(this),
            error: function (xhr, status, err) {
                console.error(this.props.url, status, err.toString())
            }.bind(this)
        });
    },
    componentDidMount: function () {
        $.ajax({
            url: this.props.Generos,
            dataType: 'json',
            success: function (data) {
                var json = { types: data };
                this.setState(json)
            }.bind(this),
            error: function (xhr, status, err) {
                console.error(this.props.Generos, status, err.toString())
            }.bind(this)
        });
        $.ajax({
            url: this.props.Results,
            dataType: 'json',
            success: function (data) {
                var json = { results: data };
                this.setState(json)
            }.bind(this),
            error: function (xhr, status, err) {
                console.error(this.props.Results, status, err.toString())
            }.bind(this)
        });
        console.log(this.state);
    },
    render: function () {
        for (i = 0; i < this.state.types.length; i++) {
            types.push(
                <div key={i} className="type">
                    <span>{this.state.types[i].tipo}</span>
                    <h2>{this.state.types[i].tipo}</h2>
                    <p>{this.state.types[i].ndiscos} Discos</p>
                </div>
            );
        }
        const j = this.state.types.length - 1;
        for (i = 0; i < this.state.results.length; i++) {
            resultList.push(
                <div key={j + i} className="block">
                    <div className="info">
                        <span>{this.state.results[i].Titulo} <small>{
                           (this.state.results[i].Agno != null) ? ("("+this.state.results[i].Agno+")") : ""
                        }</small></span>
                        <span><div className="chip">{this.state.results[i].Interprete}</div></span>
                        <span><div className="stars">5  <div className="star"></div></div></span>
                    </div>
                    <div className="setStars">{ stars }</div>
                </div>
            );
        } 
        return (
            <div id="types">
                <div>
                    <h1>Géneros</h1>
                    { types }
                </div>
                <div id="results">
                    <h1>Resultados</h1>
                    { resultList }
                </div>
            </div>
        );
    }
});
ReactDOM.render(
    <Program Results="api/Results" Generos="api/Generos"/>,
    document.getElementById('container')
);