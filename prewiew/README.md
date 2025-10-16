# 🖼️ Wallpapers Gallery Preview

Une galerie web simple et élégante pour prévisualiser tous vos wallpapers.

## 📋 Fonctionnalités

- ✨ Interface moderne et responsive
- 🔍 Recherche en temps réel
- 📁 Filtrage par dossier
- 🖼️ Prévisualisation en plein écran
- 📱 Compatible mobile
- ⚡ Chargement paresseux des images

## 🚀 Utilisation

### Méthode 1 : Génération automatique (Recommandée)

1. Exécutez le script Python pour scanner automatiquement toutes les images :

```bash
python3 generate_gallery.py
```

2. Ouvrez `index.html` dans votre navigateur

### Méthode 2 : Configuration manuelle

Si vous préférez ne pas utiliser le script Python, vous pouvez éditer manuellement le fichier `index.html` et remplir le tableau `wallpapers` dans la section JavaScript :

```javascript
const wallpapers = [
    { folder: 'Cars', images: ['car1.jpg', 'car2.png', 'car3.jpg'] },
    { folder: 'StarWars', images: ['yoda.jpg', 'vader.png'] },
    // ... etc
];
```

## 📦 Déploiement sur GitHub Pages

1. Générez la galerie avec le script Python
2. Committez les fichiers :
```bash
git add prewiew/
git commit -m "Update wallpapers gallery"
git push
```

3. Activez GitHub Pages dans les paramètres du repo :
   - Settings → Pages → Source: main branch → /prewiew folder

4. Votre galerie sera accessible à : `https://HANTALE-59.github.io/Wallpapers/prewiew/`

## 📁 Structure

```
prewiew/
├── index.html           # Page de la galerie (HTML + CSS + JS)
├── generate_gallery.py  # Script pour générer automatiquement la galerie
└── README.md           # Ce fichier
```

## 🎨 Personnalisation

### Modifier les couleurs

Dans le fichier `index.html`, modifiez la section CSS :

```css
body {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    /* Changez ces couleurs selon vos préférences */
}
```

### Modifier la taille de la grille

```css
.gallery {
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    /* Changez 300px pour modifier la taille minimale des cartes */
}
```

## 🔧 Formats d'images supportés

- JPG / JPEG
- PNG
- GIF
- WEBP
- BMP
- SVG

## ⚠️ Notes

- Les images doivent être accessibles depuis le dossier `prewiew`
- Pour GitHub Pages, les chemins relatifs sont automatiquement gérés (`../`)
- Le script ignore automatiquement les dossiers `.git`, `node_modules`, etc.

## 📝 License

Ce projet est libre d'utilisation.
