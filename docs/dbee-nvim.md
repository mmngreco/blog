Title: My first vim plugin: dbee.nvim
Date: 2021-08-22
Modified: 2021-08-22
Category: Python
Tags: devolopment, vim, database
Slug: first-plugin-dbee
Authors: Maximiliano Greco

# My first vim plugin!

Have you ever had the necessity to check a query while you are writing a python
wrapper? If so, this post is for you.

Many times I have had the necessity of checking a query while I'm writing ,
debugging or testing a function. That's why I wrote my first vim (well,
actually a nvim) plugin called
[`dbee.nvim`](https://github.com/mmngreco/dbee.nvim).

## My use case

I have a virtual environment with `SQLAlchemy` and others Python dependencies,
and then I want to check a query from my project. So, I have to open `DBeaver`,
or another SQL client, copy-paste the query there and see the result. This
process can be very annoying.

Why do I have to open an external program when I already have all that I need
in my virtual environment?

The idea is to define an `engine` using `SQLAlchemy` with a connection string,
and then through `pandas` fetch the data using that engine. Pretty simple,
isn't it?

## Installation

If you want to use it, add the following in your vimrc:

```
Plug 'mmngreco/dbee.nvim'
```

I'm using the following maps:

```
vnoremap <C-q> :DBeeQuery<cr>
vnoremap <C-c><C-c> :DBeeSetConnection<cr><cr>
```

## Example

Let's suppose that we are writing the following python function:

```python
def get_titles():
    cn_str = "sqlite:////home/mgreco/gitlab/mmngreco/dbee.nvim/tests/chinook.db"
    engine = sa.create_engine(cn_str)
    conn = engine.connect()
    qry = """
          SELECT title
          FROM albums;
          """
    out = pd.read_sql(qry, conn)
    return out
```
We can setup our connection by going to the line where `cn_str` is and select
the content inside the quotes and executing `:'<,'>DBeeSetConnection`. This
will print out the following message: `Configurated
sqlite:////home/mgreco/gitlab/mmngreco/dbee.nvim/tests/chinook.db`, after that
we are ready to make queries to that database.

Now, we are ready to select the query inside the quotes and call to
`:'<,'>DBeeQuery`. This should open a new temporary buffer with the connection
string, the selected query and the output fetched from it. You can easily close
the buffer by pressing `Q`.


![](https://i.imgur.com/N2W8dbB.gif)

I hope you will find this useful too. You can check it out
[here](https://github.com/mmngreco/dbee.nvim) , your feedback is welcome, feel
free to open an issue ;-)
