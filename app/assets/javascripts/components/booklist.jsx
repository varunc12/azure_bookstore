var BookList = React.createClass({
  render: function() {
    return (
        <div>
            {this.props.books.map(function(book){
                return (
                  <div className="col-md-4">
                    <Book book={book} />
                  </div>
                );
            })}
        </div>
    )
  }
});
