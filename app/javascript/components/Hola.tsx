import React from 'react'
import { motion } from 'framer-motion';

const Hola = ({name = '名無し'}) => (
  <div className="holaa">
  <motion.div
  initial={{ scale: 0 }}
  animate={{ rotate: 360, scale: 1 }}
  transition={{
    type: "spring",
    stiffness: 260,
    damping: 20
  }}>
  こんにちは {name} さん！</motion.div></div>

)

export default Hola