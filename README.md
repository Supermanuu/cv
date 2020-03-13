# CV

Manuel Pascual López CV

## Purpose

Im bored about Talent Hunters to ask me for an updated CV and both can not update in that moment something or donwload the file to share it with him, so I made this: an autonomous CV releaser.
This prodigious piece of code brings me the opportunity to share only an URL to the Headhunter and in that moment he could have a copy of my updated CV. Nice!

## Build

Because of the explanied purpose I extracted the building process from the OS I have already using thanks to the well known capabilities of Docker. The only thing OS dependant is the star point of the build that I tried to automate using scripts but... it was imposible. If someone could help me with this I will appreciate it.

### On Windows

This is the line needed to build the CV:

```powershell
.\buildCv.ps1
```

You could get an error like this when trying to execute the script:

```text
.\buildCv.ps1 : No se puede cargar el archivo X:\Manolito\Git\cv\buildCv.ps1 porque la ejecución de scripts está deshabilitada en este sistema. Para obtener más
información, consulta el tema about_Execution_Policies en https:/go.microsoft.com/fwlink/?LinkID=135170.
En línea: 1 Carácter: 1
+ .\buildCv.ps1
+ ~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) [], PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

In that case you have to execute this command:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
```

This will allow the current PowerShell instance to execute scripts, but only for this shell lifetime, so you do not have to be scared.

### On Unix

This is the line needed to build the CV:

```bash
./buildCv.sh
```

## Docker image creation for local development

In order to create the Latex Builder Docker image you have to navigate to the ```docker``` folder and then execute this scripts depending on your OS:

* Windows:

    ```powershell
    .\buildDockerImage.ps1
    ```

* Linux

    ```bash
    ./buildDockerImage.sh
    ```

## Release system

I am using right now GitHub's actions to release the current version of my CV. In the moment of make a pull or push a commit into master the GitHub's CI Actions will produce a new release and will deploy it into the URL.
