var Filter = React.createClass({
    render: function () {
        return (
            <form className="find">
                <span className="title">Búsqueda</span>
                <div className="input-field">
                    <input id="search" type="text">
                    <label for="search">Disco o intérprete</label>
                </div>
                <label for="sliderAgno">Rango de años</label>
                <div id="sliderAgno"></div>
                <input type="hidden" readonly="readonly" id="firstYear" />
                <input type="hidden" readonly="readonly" id="lastYear" />
                <button className="btn waves-effect" type="submit">¡Buscar!</button>
            </form>
        );
     }
});

ReactDOM.render(
    <Filter />,
    document.getElementById('Filter')
);