var Ranking = React.createClass({
    componentDidMount: () => {
        new Chartist.Bar('.ct-chart', {
            labels: ['Gloria 1', 'Gloria 2', 'Gloria 3', 'Gloria 4', 'Gloria 5'],
            series: [20, 60, 12, 20, 18]
        }, {
            distributeSeries: true
        });
    },
    render: () => {
        return (
            <div>
                <h1>Ranking</h1>
                <div className="rank">
                    <h2>Gloria 1</h2>
                </div>
                <div className="rank">
                    <h2>Gloria 2</h2>
                </div>
                <div className="rank">
                    <h2>Gloria 3</h2>
                </div>
                <div className="rank">
                    <h2>Gloria 4</h2>
                </div>
                <div className="rank">
                    <h2>Gloria 5</h2>
                </div>
                <h1>Diagrama</h1>
                <div className="ct-chart"></div>
            </div>
        );
    }
});
ReactDOM.render(
    <Ranking />,
    document.getElementById('ranking')
);