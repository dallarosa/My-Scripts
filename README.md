Batch Copy/Rename
================

Copies or renames files in a batch, based on prefixes.
Usage
-----
batch_cp_rename.sh [--rename] <source prefix> <target prefix>
Examples
-------
        batch_cp_rename.sh todo done
The above will copy all files beginning with "todo" replacing "todo" with the prefix "done" in the copies.

        batch --rename todo done
The above will rename all files beginning with "todo" replacing "todo" with the prefix "done"
