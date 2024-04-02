import React from 'react';
import { motion } from 'framer-motion';

const Hola = ({ name = '名無し', age = '名無し'}) => (
  <div className="post_card">
    <motion.div
initial={{ x: 0, y: -200, scale: 0 }}
animate={{ x: 0, y: 0, scale: 1 }}
transition={{ duration: 0.6, delay: 0.6, type: 'spring', bounce: 0.8 }}>
      <div className="body">
        <div className="post-card post-card--frame">
          <div className="post-card">
            <h2 className="post-card__title">{name}</h2>
            <p className="post-card__text">{age}</p>
          </div>
        </div>
      </div>
    </motion.div>
  </div>
);

export default Hola;
