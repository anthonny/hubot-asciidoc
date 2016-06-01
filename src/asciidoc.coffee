# Description:
#   A way to discover the Asciidoc(tor) markup.
#
# Commands:
#   hubot asciidoc comment
#   hubot asciidoc comment block
#   hubot asciidoc delimited blocks
#   hubot asciidoc example block
#   hubot asciidoc listing block
#   hubot asciidoc source block
#   hubot asciidoc literal block
#   hubot asciidoc passthrough block
#   hubot asciidoc quote block
#   hubot asciidoc open block
#   hubot asciidoc table block
#   hubot asciidoc image block
#   hubot asciidoc keyboard
#   hubot asciidoc menu selection
#   hubot asciidoc ui buttons
#   hubot asciidoc inline image
#   hubot asciidoc inline icon
#   hubot asciidoc link macro
#   hubot asciidoc mailto link
#   hubot asciidoc stem
#   hubot asciidoc stem asciimath
#   hubot asciidoc stem latex
#   hubot asciidoc footnote
#   hubot asciidoc footnote reference
#   hubot asciidoc document title
#   hubot asciidoc section 0
#   hubot asciidoc section 1
#   hubot asciidoc section 2
#   hubot asciidoc section 3
#   hubot asciidoc section 4
#   hubot asciidoc section 5
#   hubot asciidoc attribute entry
#   hubot asciidoc author
#   hubot asciidoc revision information
#   hubot asciidoc revision subscript
#   hubot asciidoc revision superscript
#   hubot asciidoc revision callout
#   hubot asciidoc revision checklist
#   hubot asciidoc revision man page

#
# Snippets
#
snippets =
  'comment':
    title: "Single comment"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#comments"
    description: """
    ```
    // A single-line comment.
    ```
    """
  'comment block':
    title: "Comment block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#comments"
    description: """
    ```
    ////
    A multi-line comment.

    Notice it's a delimited block.
    ////
    ```
    """
  'delimited blocks':
    title: "Delimited blocks"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#delimited-blocks"
    description: """
    *Delimiter line*
    ```
    ****
    Valid sidebar block
    ****
    ```
    """
  'example block':
    title: "Example block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#example"
    description: """
    ```
    .The title of the example
    ====
    The content of the example
    ====
    ```

    A sample:
    ```
    .Sample document
    ====
    Here's a sample AsciiDoc document:

    [listing]
    ....
    = Title of Document
    Doc Writer
    :toc:

    This guide provides...
    ....

    The document header is useful, but not required.
    ====
    ```
    """
  'listing block':
    title: "Listing block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#listing-blocks"
    prefix: '--'
    description: """
    *Listing block*
    ```
    [listing]
    This is an example of a paragraph styled with `listing`.
    Notice that the monospace markup is preserved in the output.
    ```

    *Delimited listing block*
    ```
    ----
    This is an example of a _listing block_.
    The content inside is rendered as <pre> text.
    ----
    ```
    """
  'source block':
    title: "Source block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#listing-blocks"
    description: """
    ```
    [source,ruby]
    ----
    require 'sinatra'

    get '/hi' do
      "Hello World!"
    end
    ----
    ```
    """
  'literal block':
    title: "Literal block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#literal-text-and-blocks"
    description: """
    ```
    ....
    Lazarus: Where is the *defensive operations manual*?

    Computer: Calculating ...
    Can not locate object that you are not authorized to know exists.
    Would you like to ask another question?

    Lazarus: Did the werewolves tell you to say that?

    Computer: Calculating ...
    ....
    ```

    Notice in the output that the bold text formatting is not rendered nor are the three, consecutive periods replaced by the ellipsis Unicode character.
    """
  'passthrough block':
    title: "Passthrough block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#pass-bl"
    description: """
    A block passthrough is delimited by four plus signs `++++`.
    ```
    ++++
    <video poster="images/movie-reel.png">
      <source src="videos/writing-zen.webm" type="video/webm">
    </video>
    ++++
    ```

    If you want substitutions to be performed on the content in a delimited passthrough block, you can add them using the subs attribute.
    ```
    [subs="attributes"]
    ++++
    {name}
    image:tiger.png[]
    ++++
    ```
    """
  'quote block':
    title: "Quote block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#quote"
    description: """
    ```
    [quote, Monty Python and the Holy Grail]
    ____
    Dennis: Come and see the violence inherent in the system. Help! Help! I'm being repressed!

    King Arthur: Bloody peasant!

    Dennis: Oh, what a giveaway! Did you hear that? Did you hear that, eh? That's what I'm on about! Did you see him repressing me? You saw him, Didn't you?
    ____
    ```
    """
  'open block':
    title: "Open block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#open-blocks"
    description: """
    ```
    --
    An open block can be an anonymous container,
    or it can masquerade as any other block.
    --
    ```
    """
  'table block':
    title: "Table block"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#tables"
    description: """
    ```
    |===
    |Cell in column 1, row 1
    |Cell in column 2, row 1
    |Cell in column 3, row 1

    |Cell in column 1, row 2
    |Cell in column 2, row 2
    |Cell in column 3, row 2
    |===
    ```
    """
  'image block':
    title: "Block image"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#images"
    description: """
    ```
    image::sunset.jpg[Sunset]
    ```
    """
  # Inline Macros
  #
  'keyboard':
    title: "Keyboard shortcut"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#keyboard-shortcuts'
    description: "kbd:[Ctrl+T]"
  'menu selection':
    title: "Menu selection"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#menu-selections'
    description: "menu:File[Save]"
  'ui buttons':
    title: "UI button"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#ui-buttons'
    description: "btn:[OK]"
  'inline image':
    title: "Inline image"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#images'
    description: "image:logo.png[Logo]"
  'inline icon':
    title: "Inline icon"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#inline-icons'
    description: "icon:tags[]"
  'link macro':
    title: "Explicit link"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#url'
    description: "link:external.html#livereload[LiveReload]"
  'mailto link':
    title: "E-mail link"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#url'
    description: "mailto:doc@example.com[Doc Writer] $0"
  'stem':
    title: "STEM expression"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#activating-stem-support'
    description: "stem:[sqrt(4) = 2]"
  'stem asciimath':
    title: "AsciiMath STEM expression"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#activating-stem-support'
    description: "asciimath:[expressoin]"
  'stem latexmath':
    title: "LaTeX STEM expression"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#activating-stem-support'
    description: "latexmath:[expression]"
  'footnote':
    title: "Footnote"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#user-footnotes'
    description: "footnote:[The footnote content]"
  'footnote reference':
    title: "Footnote reference"
    descriptionMoreURL: 'http://asciidoctor.org/docs/user-manual/#user-footnotes'
    description: "footnoteref:[disclaimer,Opinions are my own.]"


  # Sections
  #
  'document title':
    title: "Document title (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#document-title"
    description: """
    ```
    = Title
    ```
    """
  'section 0':
    title: "Level 0 section / part (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    = Section 0
    ```
    """
  'section 1':
    title: "Level 1 section / chapter (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    == Section 1
    ```
    """
  'section 2':
    title: "Level 2 section (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    === Section 2
    ```
    """
  'section 3':
    title: "Level 3 section (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    ==== Section 3
    ```
    """
  'section 4':
    title: "Level 4 section (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    ===== Section 4
    ```
    """
  'section 5':
    title: "Level 5 section (single-line syntax)"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#sections"
    description: """
    ```
    ====== Section 5
    ```
    """
  # Others
  #
  'attribute entry':
    title: "Define or update a document attribute"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#setting-attributes-on-a-document"
    description: """
    ```
    :name: value
    ```
    """
  'author':
    title: "Author and email line"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#author-and-email"
    description: """
    The author of a document is listed on the line beneath the document’s title. An optional email address or URL can follow an author’s name inside angle brackets.
    ```
    = The Dangerous and Thrilling Documentation Chronicles
    Kismet Rainbow Chameleon <kismet@asciidoctor.org>
    ```
    """
  'revision information':
    title: "Document revision line"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#revision-number-date-and-remark"
    description: """
    The revision information is listed on the third line of the header, beneath the author information line.
    ```
    v1.0, October 2, 2013: First incarnation
    ```
    """
  'subscript':
    title: "subscript"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#subscript-and-superscript"
    description: """
    One tilde `~` on either side of a word or phrase makes it subscript.
    ```
    H~2~O
    ```
    """
  'superscript':
    title: "superscript"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#subscript-and-superscript"
    description: """
    One caret `^` on either side of a word or phrase makes it superscript.
    ```
    E=mc^2^
    ```
    """
  'callout':
    title: "Callout number"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#callouts"
    description: """
    Callout numbers (aka callouts `<number>`) provide a means to add annotations to lines in a verbatim block.
    Here’s a basic example of a verbatim block that uses callouts:
    ```
    [source,ruby]
    ----
    require 'sinatra' <1>
    ----
    <1> Library import
    ```
    """
  'checklist':
    title: "Unchecked checklist item"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#checklist"
    description: """
    List items can be marked complete using checklists.
    ```
    - [*] checked
    - [x] also checked
    - [ ] not checked
    -     normal list item
    ```
    """

  # Templates
  #
  'man page':
    title: "Man page template"
    descriptionMoreURL: "http://asciidoctor.org/docs/user-manual/#man-pages"
    # See also http://docopt.org/ for how to describe commmand line options.
    description: """
    ```
    = eva(1)
    Andrew Stanton
    v1.0.0
    :manmanual: EVE
    :mansource: EVE
    :man-linkstyle: blue R <>

    == NAME

    eve - analyzes an image to determine if it's a picture of a life form

    == SYNOPSIS

    *eve* ['OPTION']... 'FILE'...

    == OPTIONS

    *-o, --out-file*=_OUT_FILE_::
      Write result to file _OUT_FILE_.

    *-c, --capture*::
      Capture specimen if it's a picture of a life form.

    == EXIT STATUS

    *0*::
      Success.
      Image is a picture of a life form.

    *1*::
      Failure.
      Image is not a picture of a life form.

    == RESOURCES

    *Project web site:* http://eve.example.org

    == COPYING

    Copyright \(C) 2008 {author}.
    Free use of this software is granted under the terms of the MIT License.
    ```
    """
sendAttachment = (msg, attachments) ->
  msg.robot.adapter.customMessage
    channel: msg.envelope.room
    username: msg.robot.name
    attachments: attachments

generateAttachment = (snippet) ->
  attachment=
    title: snippet.title
    title_link: snippet.descriptionMoreURL
    pretext: snippet.pretext
    fallback: snippet.fallback
    text: """
    #{snippet.description}
    """
    mrkdwn_in: ["text"]

  attachment

module.exports = (robot) ->
  robot.respond /asciidoc (.*)/i, (msg) ->
    query = msg.match[1]
    snippet = snippets[query.toLowerCase()]
    if snippet?
      attachments = [generateAttachment(snippet)]
    else
      attachment=
        title: "The query ​*#{query}*​ was not found"
        title_link: "https://github.com/anthonny/tweetiments/issues/new"
        fallback: "The query ​*#{query}*​ was not found"
        text: """
        *#{msg.robot.name}* could not find a match for ​*#{query}*. *#{msg.robot.name}* is just a robot and he may need human help to add the entry.

        1. Open an issue at https://github.com/anthonny/hubot-asciidoc/issues.
        2. Call it *Add <query>* to *hubot-asciidoc*
        3. Bonus points: create a pull request and add it yourself. See  https://github.com/anthonny/hubot-asciidoc/README.adoc for help.

        *#{msg.robot.name}* thanks you :beers:.
        """
        mrkdwn_in: ["text"]

      attachments = [attachment]

    sendAttachment msg, attachments
