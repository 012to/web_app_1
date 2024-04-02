// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "./controllers";

Turbo.session.drive = false;

import React from 'react';
import { createRoot } from 'react-dom/client';

import Hey from './components/Hey';
const hey = document.getElementById('hey');
createRoot(hey).render(<Hey/>);

import Hola from "./components/Hola"
const hola = document.getElementById('hola');
const holaData = JSON.parse(hola.getAttribute('data'))
// ブラウザのターミナルでJSONを確認した
console.log(holaData);
createRoot(hola).render(<Hola name={holaData.name} />);
