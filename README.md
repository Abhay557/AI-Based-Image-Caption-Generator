# AI Image Caption Generator

## Overview
The **AI Image Caption Generator** is a web application that generates AI-powered captions for images. It supports:
- **Custom Caption Styles:** Choose between Formal, Funny, or Poetic styles.
- **Multimodal AI:** Add optional text input for enhanced caption generation.
- **Bulk Image Captioning:** Upload multiple images for batch processing.

## Features
✅ **AI-generated captions** for uploaded images.  
✅ **Multiple caption styles** (Formal, Funny, Poetic).  
✅ **Supports additional text input** for context-aware captions.  
✅ **Batch processing** for multiple image uploads.  
✅ **FastAPI backend with BLIP model** for image captioning.  
✅ **React frontend with a simple UI** for user-friendly experience.  

## Tech Stack
- **Backend:** FastAPI, Python, Transformers (BLIP model), Pillow (PIL), Uvicorn
- **Frontend:** React, Axios, Tailwind CSS

## Installation & Setup
### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/ai-image-caption-generator.git
cd ai-image-caption-generator
```

### 2. Backend Setup (FastAPI)
#### Install Dependencies:
```bash
pip install fastapi uvicorn torch transformers pillow requests
```

#### Run the FastAPI Server:
```bash
uvicorn main:app --reload
```

The backend will be running at: `http://127.0.0.1:8000`

### 3. Frontend Setup (React)
#### Install Dependencies:
```bash
cd frontend
npm install
```

#### Start React Development Server:
```bash
npm start
```

The frontend will be running at: `http://localhost:3000`

## API Endpoints
### **Generate Caption for Single Image**
- **Endpoint:** `POST /generate_caption/`
- **Parameters:**
  - `file` (image file)
  - `style` (default, formal, funny, poetic)
  - `text_input` (optional)
- **Response:**
```json
{
  "caption": "A beautiful sunset over the ocean."
}
```

### **Bulk Image Captioning**
- **Endpoint:** `POST /bulk_generate_captions/`
- **Parameters:**
  - `files` (multiple image files)
  - `style` (default, formal, funny, poetic)
- **Response:**
```json
{
  "captions": {
    "image1.jpg": "A lovely park with green trees.",
    "image2.jpg": "A cat sitting on a windowsill."
  }
}
``` 

## License
This project is licensed under the MIT License.

