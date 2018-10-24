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
            // {
            //   Header: "Edit",
            //   accessor: book => <a href={`/admin/books/${book.id}/edit`}>Edit</a>,
            //   id: "id"
            // }
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
