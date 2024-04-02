const Mount = (Component, mountNodeId) => {
    const mountNode = document.getElementById(mountNodeId);
    const props = JSON.parse(mountNode.getAttribute("data"));
    createRoot(mountNode).render(<Component {...props} />);
  };