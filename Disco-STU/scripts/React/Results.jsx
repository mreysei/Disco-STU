var stars = [];
for (i = 0; i < 10; i++){
    stars.push(
        <div key={i} className="star"></div> 
    );
}

var Resultados = React.createClass({
    render: function() {
        return (
            <div>
                <h1>Resultados</h1>
                <div className="block" >
                    <div className="info">
                        <span>Po encima <small>(1996)</small></span>
                        <span><div className="chip">Paquito</div></span>
                        <span><div className="stars">5 *</div></span>
                    </div>
                    <div className="setStars">
                        { stars }
                    </div>
                </div>
            </div>
        );
    }
});
ReactDOM.render(
    <Resultados />,
    document.getElementById('results')
);