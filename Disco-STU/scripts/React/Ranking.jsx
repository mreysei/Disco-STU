var Ranking = React.createClass({
    render: function() {
        return (
            <div>
                <h1>Ranking</h1>
                <div className="type">
                    <span>Una prueba más larga todavía</span>
                    <h2>Rock</h2>
                    <p>32 Discos</p>
                </div>
            </div>
        );
    }
});
ReactDOM.render(
    <Ranking />,
    document.getElementById('ranking')
);