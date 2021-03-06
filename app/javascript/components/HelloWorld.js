import React from "react";
import PropTypes from "prop-types";
import ReactTable from "react-table";
import 'react-table/react-table.css';

// the first "EditButton" is our own naming
import EditButton from './EditButton';

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
            }
            ,
            {
              Header: "Edit",
              accessor: book => <EditButton book={book} />,
              id: "id"
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
