/// <reference types="cypress" />

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given('que eu estou na página de login', () => {
    cy.log('Acessando a página de login');
    cy.visit('https://www.saucedemo.com/');
});

And('clico no botão Login', () => {
    cy.get('[data-test="login-button"]').click();
});

Then('eu devo ser redirecionado para a página de Produtos', () => {
    cy.get('[data-test="title"]').should('have.text', 'Products');
});

When('eu digito o usuário padrão e a senha correta', () => {
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('secret_sauce');
});

When('eu digito um usuário {string}', (username) => {
    cy.get('[data-test="username"]').type(username);
});

And('digito uma senha {string}', (password) => {
    cy.get('[data-test="password"]').type(password);
});

Then('eu devo ver uma mensagem de erro {string}', (errorMessage) => {
    cy.get('[data-test="error"]').should('have.text', errorMessage);
});