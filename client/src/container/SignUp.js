// @ts-nocheck
import React, { Component } from "react";
import { Form, Button } from "react-bootstrap";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { signup } from "../redux/modules/auth/actions";
import TextFieldGroup from "../components/common/formFields";

class Signup extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      email: "",
      password: ""
    };
  }

  handleChange = e => {
    const { name, value } = e.target;
    this.setState({
      [name]: value
    });
  };

  handleSubmit = e => {
    e.preventDefault();
    if (this.props.signup(this.state)) this.props.history.push("/user_profile");
  };

  render() {
    return (
      <main>
        <Form onSubmit={this.handleSubmit}>
          <h1 className="page-title">Sign Up</h1>
          <// @ts-ignore
          TextFieldGroup
            label="Name"
            id="formControlsName"
            type="text"
            name="name"
            placeholder="Name"
            value={this.state.name}
            onChange={this.handleChange}
          />
          <// @ts-ignore
          TextFieldGroup
            label="Email"
            id="formControlsEmail"
            type="text"
            name="email"
            placeholder="Email"
            value={this.state.email}
            onChange={this.handleChange}
          />
          <// @ts-ignore
          TextFieldGroup
            label="Password"
            id="formControlsPassword"
            type="password"
            name="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.handleChange}
          />
          <div className="submissionFields">
            <Button
              type="submit"
              value="Sign Up"
              // @ts-ignore
              bsstyle="primary"
            >
              Sign Up
            </Button>
          </div>
          <div className="alternativeAccess">
            <p>
              Already have an Account? <a href="/login">Log In</a>
            </p>
          </div>
        </Form>
      </main>
    );
  }
}

// @ts-ignore
export default Signup = withRouter(connect(null, { signup })(Signup));
