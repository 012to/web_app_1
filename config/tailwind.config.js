const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './src/**/*.html',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['ui-sans-serif', 'system-ui', ...defaultTheme.fontFamily.sans],
        serif: ['ui-serif', 'Georgia'],
        mono: ['ui-monospace', 'SFMono-Regular'],
        display: ['Oswald'],
        body: ['"Open Sans"'],
        montserrat: ['Montserrat'],
        lato: ['Lato'],
        garamond: ['Garamond'],
        'biz-udpmincho-regular': ['"BIZ UDPMincho"', 'serif'],
        'zen-maru-gothic': ['"Zen Maru Gothic"', 'serif']
      },
      animation: {
        'roll-in-bottom': "roll-in-bottom 0.6s ease both",//下から回転
        'slit-in-vertical': "slit-in-vertical 0.3s ease both",//90度垂直回転
        'tracking-in-expand': "tracking-in-expand 1.6s cubic-bezier(0.215, 0.610, 0.355, 1.000) both",//文字が横に広がる
        'bg-pan-left': "bg-pan-left 0.6s ease both",//グラデーション
        'slit-in-horizontal': 'slit-in-horizontal 0.45s ease both',//90度水平回転
        "swing-in-top-bck": "swing-in-top-bck 0.8s cubic-bezier(0.175, 0.885, 0.320, 1.275)   both",//ふんわり出現
        "text-pop-up-top": "text-pop-up-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both",//文字が浮かびあがる
        "slide-fwd-center": "slide-fwd-center 0.45s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both",//少し拡大
        "jello-horizontal": "jello-horizontal 0.8s ease   both",//ボタンのポップな動き
        "bounce-in-top": "bounce-in-top 1.1s ease   both",
        "wobble-hor-bottom": "wobble-hor-bottom 0.8s ease   both",
        "slide-top": "slide-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both"
      },
      keyframes: {
        'roll-in-bottom': {
          '0%': {
            transform: "translateY(800px) rotate(540deg)",
            opacity: "0"
          },
          to: {
            transform: "translateY(0) rotate(0deg)",
            opacity: "1"
          }
        },
        'slit-in-vertical': {
          '0%': {
            transform: "translateZ(-800px) rotateY(90deg)",
            opacity: "0"
          },
          '54%': {
            transform: "translateZ(-160px) rotateY(87deg)",
            opacity: "1"
          },
          to: {
            transform: "translateZ(0) rotateY(0)"
          }
        },
        'tracking-in-expand': {
          '0%': {
            "letter-spacing": "-.5em",
            opacity: "0"
          },
          '40%': {
            opacity: ".6"
          },
          to: {
            opacity: "1"
          }
        },
        'bg-pan-left': {
          '0%': {
            "background-position": "100% 50%"
          },
          to: {
            "background-position": "0% 50%"
          }
        },
        "slit-in-horizontal": {
          "0%": {
              transform: "translateZ(-800px) rotateX(90deg)",
              opacity: "0"
          },
          "54%": {
              transform: "translateZ(-160px) rotateX(87deg)",
              opacity: "1"
          },
          to: {
              transform: "translateZ(0) rotateX(0)"
          }
        },
          "swing-in-top-bck": {
              "0%": {
                  transform: "rotateX(70deg)",
                  "transform-origin": "top",
                  opacity: "0"
              },
              to: {
                  transform: "rotateX(0deg)",
                  "transform-origin": "top",
                  opacity: "1"
              }
          },
          "text-pop-up-top": {
            "0%": {
                transform: "translateY(0)",
                "transform-origin": "50% 50%",
                "text-shadow": "none"
            },
            to: {
                transform: "translateY(-50px)",
                "transform-origin": "50% 50%",
                "text-shadow": "0 1px 0 #ccc, 0 2px 0 #ccc, 0 3px 0 #ccc, 0 4px 0 #ccc, 0 5px 0 #ccc, 0 6px 0 #ccc, 0 7px 0 #ccc, 0 8px 0 #ccc, 0 9px 0 #ccc, 0 50px 30px rgba(0, 0, 0, .3)"
            }
          },
          "slide-fwd-center": {
                "0%": {
                    transform: "translateZ(0)"
                },
                to: {
                    transform: "translateZ(160px)"
                }
            },
        "jello-horizontal": {
          "0%,to": {
              transform: "scale3d(1, 1, 1)"
          },
          "30%": {
              transform: "scale3d(1.25, .75, 1)"
          },
          "40%": {
              transform: "scale3d(.75, 1.25, 1)"
          },
          "50%": {
              transform: "scale3d(1.15, .85, 1)"
          },
          "65%": {
              transform: "scale3d(.95, 1.05, 1)"
          },
          "75%": {
              transform: "scale3d(1.05, .95, 1)"
          }
        },
        "bounce-in-top": {
          "0%": {
              transform: "translateY(-500px)",
              "animation-timing-function": "ease-in",
              opacity: "0"
          },
          "38%": {
              transform: "translateY(0)",
              "animation-timing-function": "ease-out",
              opacity: "1"
          },
          "55%": {
              transform: "translateY(-65px)",
              "animation-timing-function": "ease-in"
          },
          "72%,90%,to": {
              transform: "translateY(0)",
              "animation-timing-function": "ease-out"
          },
          "81%": {
              transform: "translateY(-28px)"
          },
          "95%": {
              transform: "translateY(-8px)",
              "animation-timing-function": "ease-in"
          }
        },
        "wobble-hor-bottom": {
          "0%,to": {
              transform: "translateX(0%)",
              "transform-origin": "50% 50%"
          },
          "15%": {
            transform: "translateX(-30px) rotate(-6deg)"            },
          "30%": {
              transform: "translateX(15px) rotate(6deg)"
          },
          "45%": {
              transform: "translateX(-15px) rotate(-3.6deg)"
          },
          "60%": {
              transform: "translateX(9px) rotate(2.4deg)"
          },
          "75%": {
              transform: "translateX(-6px) rotate(-1.2deg)"            }
        },
        "slide-top": {
          "0%": {
              transform: "translateY(0)"
          },
          to: {
              transform: "translateY(-100px)"
          }
      }

        }
      }
    },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
};
