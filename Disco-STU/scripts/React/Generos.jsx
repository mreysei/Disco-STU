let types = [];
var Generos = React.createClass({
    getInitialState: function () {
        return { result: [] };
    },
    componentDidMount: function () {
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
            types.push(
                <div key={this.state.result[i].idTipo} id={this.state.result[i].idTipo} className="type">
                    <span>{this.state.result[i].tipo}</span>
                    <h2>{this.state.result[i].tipo}</h2>
                    <p>{this.state.result[i].ndiscos} Discos</p>
                </div>
            );
        }
        return (
            <div>
                <h1>Géneros</h1>
                { types }
                <form className="tipoSelection">
                    <input type="hidden" name="type" id="idTipo" />
                </form>
            </div>
        );
    }
});
ReactDOM.render(
    <Generos url="api/Generos"/>,
    document.getElementById('types')
);