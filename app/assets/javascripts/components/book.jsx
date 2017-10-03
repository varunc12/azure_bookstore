var Book = React.createClass({
  render: function() {
    var book = this.props.book;
    return (
        <div>
            <img src={this.props.book.cover} title={this.props.book.title}/>
            <p>{this.props.book.description}</p>
        </div>
    )
  }
});
