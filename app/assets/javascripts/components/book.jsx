var Book = React.createClass({
  render: function() {
    var book = this.props.book;
    return (
        <div>
            <h3>{this.props.book.title}</h3>
            <img src={this.props.book.cover}/>
            <p>{this.props.book.description}</p>
        </div>
    )
  }
});