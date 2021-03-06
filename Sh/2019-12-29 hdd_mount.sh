# Mount HDD in one command checking if it's already mounted
MOUNT_DIR="/run/media/hdd"
DEV_DIR="/dev/sdb1"

if [[ ! -d "${MOUNT_DIR}" ]]
then
  sudo mkdir -p $MOUNT_DIR
  sudo mount $DEV_DIR $MOUNT_DIR
  echo "Munted $DEV_DIR on $MOUNT_DIR"
  cd $MOUNT_DIR
  exec zsh
else
  sudo umount $DEV_DIR
  echo "Unmounted $DEV_DIR"
  sudo rmdir $MOUNT_DIR
fi
