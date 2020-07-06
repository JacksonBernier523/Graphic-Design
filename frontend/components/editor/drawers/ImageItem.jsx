import React from 'react';
import styles from './ImageItem.module.css';
import { FiMoreHorizontal, FiEye } from 'react-icons/fi';

class ImageItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dropDown: false,
    };
  }

  render() {
    const { thumb, id, toggleModal } = this.props;
    return (
      <div className={styles.item}>
        <button type="button" className={styles.more} onClick={() => toggleModal(id)}>
          <FiMoreHorizontal />
        </button>
        <img src={thumb} alt="" />
      </div>
    );
  }
}

export default ImageItem;
