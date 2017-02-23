var Generos = React.createClass({
    componentDidMount: () => {
        $('.type').find('span').arctext({ radius: 100 });
    },
    render: () => {
        return (
            <div>
                <h1>Géneros</h1>
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
    <Generos />,
    document.getElementById('types')
);