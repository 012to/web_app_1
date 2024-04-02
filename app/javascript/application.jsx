// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "./controllers";

Turbo.session.drive = false;

import React from 'react';
import { createRoot } from 'react-dom/client';
import HelloMessage from './components/App';

const container = document.getElementById('root');
const root = createRoot(container);

document.addEventListener('DOMContentLoaded', () => {
  root.render(<HelloMessage name="World" />);
});