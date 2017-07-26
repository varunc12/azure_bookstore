var BookList = React.createClass({
  render: function() {
    return (
        <div>
            {this.props.books.map(function(book){
                return (
                    <Book book={book} />
                );
            })}
        </div>
    )
  }
});