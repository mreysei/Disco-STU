let labels = [], series = [], ranks = [];

var Ranking = React.createClass({
    getInitialState: function() {
        return { result: [] };
    },
    componentDidMount: function() {
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
            labels.push(this.state.result[i].Titulo);
            series.push(this.state.result[i].n5);
            ranks.push(
                <div key={this.state.result[i].IdDisco} className="rank">
                    <h2>{this.state.result[i].Titulo}</h2>
                </div>
            );
        }
        if (labels.length > 0) {
            new Chartist.Bar('.ct-chart', {
                labels, series
            }, {
                distributeSeries: true
            });
        }
        return (
            <div>
                <h1>Ranking</h1>
                { ranks }
                <h1>Diagrama</h1>
                <div className="ct-chart"></div>
            </div>
        );
    }
});

ReactDOM.render(
    <Ranking url="api/Ranking"/>,
    document.getElementById('ranking')
);