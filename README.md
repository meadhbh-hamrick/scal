<body>

<div id="content">

<a name="/"></a>
<h1>scal</h1>

<a name="/0"></a>

<table class="meta">
<tbody>
<tr>
<td>Author:</td>
<td>Meadhbh Hamrick</td>
</tr>
<tr>
<td>Abstract:</td>
<td>Print out a sideways annual calendar on a narrow, tall terminal window.</td>
</tr>
</tbody>
</table>

<a name="/introduction"></a>
<h2>Introduction</h2>

<p>

I live in a terminal window that's 64x48 characters.
The <code>cal</code> command prints out an annual calendar that's just a bit too wide to be properly formatted on such a terminal.
So I wrote my own.

</p>

<p>

The <code>scal</code> program prints only annual (year) calendars.
Unlike <code>cal</code>, it does not print out months.
If you specify a gregorian year as a parameter, it will print a calendar of that year.
If you do not specify a year, it will default to using the current year.

</p>

<p>

For example, issuing the command:

</p>

<figure>
<pre class="captioned">scal 1965</pre>
<figcaption>Figure 1: Example invocation of the <code>scal</code> command</figcaption>
</figure>

<p>

will produce the output:

</p>

<figure>
<pre class="captioned">
   January, 1965      February, 1965     March, 1965

Su --  3 10 17 24 31  --  7 14 21 28 --  --  7 14 21 28 --
Mo --  4 11 18 25 --   1  8 15 22 -- --   1  8 15 22 29 --
Tu --  5 12 19 26 --   2  9 16 23 -- --   2  9 16 23 30 --
We --  6 13 20 27 --   3 10 17 24 -- --   3 10 17 24 31 --
Th --  7 14 21 28 --   4 11 18 25 -- --   4 11 18 25 -- --
Fr  1  8 15 22 29 --   5 12 19 26 -- --   5 12 19 26 -- --
Sa  2  9 16 23 30 --   6 13 20 27 -- --   6 13 20 27 -- --

   April, 1965        May, 1965          June, 1965

Su --  4 11 18 25 --  --  2  9 16 23 30  --  6 13 20 27 --
Mo --  5 12 19 26 --  --  3 10 17 24 31  --  7 14 21 28 --
Tu --  6 13 20 27 --  --  4 11 18 25 --   1  8 15 22 29 --
We --  7 14 21 28 --  --  5 12 19 26 --   2  9 16 23 30 --
Th  1  8 15 22 29 --  --  6 13 20 27 --   3 10 17 24 -- --
Fr  2  9 16 23 30 --  --  7 14 21 28 --   4 11 18 25 -- --
Sa  3 10 17 24 -- --   1  8 15 22 29 --   5 12 19 26 -- --

   July, 1965         August, 1965       September, 1965

Su --  4 11 18 25 --   1  8 15 22 29 --  --  5 12 19 26 --
Mo --  5 12 19 26 --   2  9 16 23 30 --  --  6 13 20 27 --
Tu --  6 13 20 27 --   3 10 17 24 31 --  --  7 14 21 28 --
We --  7 14 21 28 --   4 11 18 25 -- --   1  8 15 22 29 --
Th  1  8 15 22 29 --   5 12 19 26 -- --   2  9 16 23 30 --
Fr  2  9 16 23 30 --   6 13 20 27 -- --   3 10 17 24 -- --
Sa  3 10 17 24 31 --   7 14 21 28 -- --   4 11 18 25 -- --

   October, 1965      November, 1965     December, 1965

Su --  3 10 17 24 31  --  7 14 21 28 --  --  5 12 19 26 --
Mo --  4 11 18 25 --   1  8 15 22 29 --  --  6 13 20 27 --
Tu --  5 12 19 26 --   2  9 16 23 30 --  --  7 14 21 28 --
We --  6 13 20 27 --   3 10 17 24 -- --   1  8 15 22 29 --
Th --  7 14 21 28 --   4 11 18 25 -- --   2  9 16 23 30 --
Fr  1  8 15 22 29 --   5 12 19 26 -- --   3 10 17 24 31 --
Sa  2  9 16 23 30 --   6 13 20 27 -- --   4 11 18 25 -- --

</pre>
<figcaption>Figure 2: Example output of the command <code>scal 1965</code></figcaption>
</figure>

<p>

As you can see, the calendar is "sideways" with respect to the output of the <code>cal</code> command.
Days of the week are now rows and weeks of the year are now columns.

</p>

<p>

<code>scal</code> does not implement "advanced" features of <code>cal</code> like:

</p>

<ul>

<li>

<p>

Printing out only months

</p>

</li>

<li>

<p>

Highlighting the current date, easter, etc.

</p>

</li>

<li>

<p>

Truncating September 1752 (or any other Julian to Gregorian conversion.)

</p>

</li>

</ul>

<p>

I hope to add these features as I find the time.

</p>

<p>

Do not depend on the output of <code>scal</code> for years before the conversion from Julian to Gregorian.
It will likely not give you the results you want.

</p>


<h2>Getting the Code</h2>

<p>

The source code for <code>scal</code> is hosted on GitHub <a href="#/references/SCAL">[SCAL]</a>.

</p>

<p>

Instead of penning a redundant tutorial on using <code>git</code>, I simply refer you to Microsoft's guide <a href="#/references/ABOUTGIT">[ABOUTGIT]</a>.

</p>

<p>

But for the impatient, this is how you can git the code if you have a GitHub.Com account:

</p>

<figure>
<pre class="captioned">git clone git@github.com:meadhbh-hamrick/scal.git
cd scal</pre>
<figcaption>Figure 3: Commands for checking out the scal source</figcaption>
</figure>

<p>

The repo currently does not have any sub-projects, so you don't need to do a recursive clone or run the <code>git init</code> command after cloning.

</p>

<h2>Running <code>scal</code></h2>

<p>
<code>scal</code> is written in the Janet programming language <a href="#/references/JANET">[JANET]</a>, so the first way to run <code>scal</code> is to install Janet and run the <code>scal</code> script.
If <code>janet</code> is in your path, you <i>should</i> be able to run the script just by typing it's name:

<figure>
<pre class="captioned">scal
scal 1965
</pre>
<figcaption>Figure 4: Command for running scal</figcaption>
</figure>

<p>

Janet programs can be compiled into native executables on Linux and Windows <a href="#/references/JPM">[JPM]</a>.
I assume this works on other posix compliant platforms like BSD, macOS, Illuminos, etc.
As best I can tell, the <code>jpm</code> build system calls the native compiler and linker, so it <i>should</i> work on platforms other than AMD64.

</p>

<p>

To build a native executable, use the <code>make</code> command to run the appropriate <code>jpm</code> command:

</p>

<pre>make build</pre>

<p>

This should produce a binary in the <code>./build</code> directory.
That binary can be copied anywhere in your path.

</p>

<h2>Notes</h2>

<p>

Todo items and bugs are listed in the <a href="./docs">./docs</a> directory in the <a href="./docs/todo.tqt">./docs/todo.tqt</a> and <a href="./docs/bugs.tqt">./docs/bugs.tqt</a> files.
To file a bug or add a todo item, create a new branch, add the appropriate <code>.tqt</code> file in that directory, then send me a pull request.

</p>

<p>

Both the <code>todo.tqt</code> and <code>bugs.tqt</code> files are indexes referencing numbered files in those directories in the format of <code>T####.tqt</code> (for todo files) or <code>B####.tqt</code> for bugs.
So your pull request should include a update to either the <code>todo.tqt</code> or <code>bugs.tqt</code> file and a new numbered file containing details of the bug or todo item.

</p>

<h2>References</h2>

<dl class="references">

<a name="/references/SCAL"></a>
<dt>SCAL</dt>
<dd><a href="https://github.com/meadhbh-hamrick/scal">https://github.com/meadhbh-hamrick/scal</a></dd>

<a name="/references/ABOUTGIT"></a>
<dt>ABOUTGIT</dt>
<dd><a href="https://docs.github.com/en/get-started/using-git/about-git">https://docs.github.com/en/get-started/using-git/about-git</a></dd>

<a name="/references/JANET"></a>
<dt>JANET</dt>
<dd><a href="https://janet-lang.org/index.html">https://janet-lang.org/index.html</a></dd>

<a name="/references/JPM"></a>
<dt>JPM</dt>
<dd><a href="https://janet-lang.org/docs/jpm.html">https://janet-lang.org/docs/jpm.html</a></dd>

</dl>
</div>
