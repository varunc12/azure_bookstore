var BookList = React.createClass({
  render: function() {
    return (
        <div>
            <Hello name="Daniel" />
            {this.props.books.map(function(book){
                return (
                    <Book book={book} />
                );
            })}
        </div>
    )
  }
});