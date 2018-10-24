import React from "react";
import PropTypes from "prop-types";
import ReactTable from "react-table";
import 'react-table/react-table.css';

class HelloWorld extends React.Component {
  render () {
    return (
      <div>
        <ReactTable
          data={this.props.users}
          columns={[
            {
              Header: "Email",
              accessor: "email"
            },
            {
              Header: "Name",
              accessor: "name"
            },
            {
              id: "admin",
              Header: "Admin",
              accessor: (user) => user.admin ? "✅" : "❌"
            },
            {
              id: "author",
              Header: "Author",
              accessor: (user) => user.author ? "✅" : "❌"
            },
            {
              Header: "Author",
              accessor: <%= link_to "Edit Book", edit_book_path(@book) %>
            }
          ]}
        />
      </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
