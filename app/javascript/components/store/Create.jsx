import React, { useState } from "react";
import API from "../../utils/API";

class Create extends React.Component {
  constructor() {
    super();
    this.state = {
      store: {
        name: "",
      },
    };
  }

  handleChange = ({ target: { name, value } }) => {
    this.setState({ store: { ...this.state.store, [name]: value } });
  };

  handleSubmit = (e) => {
    e.preventDefault();
    let { store } = this.state;
    API.postNewTask("/stores", "POST", store)
      .then((response) => {
        window.location.href = "/";
      })
      .catch((error) => {
        error.json().then(({ errors }) => {
          console.log(errors);
        });
      });
  };

  displayForm = () => {
    let { store } = this.state;
    return (
      <div>
        <p>create Store</p>
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            name="name"
            value={store.name}
            placeholder="Enter store name"
            onChange={this.handleChange}
          />
          <input type="submit" value="Create Store" />
        </form>
      </div>
    );
  };

  render() {
    return <>{this.displayForm()}</>;
  }
}

export default Create;
