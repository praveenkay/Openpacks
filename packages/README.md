# Package Starters

These are lightweight packaging notes and example Docker setups for the free open-source bases.  
The goal is a one-command or guided start for each vertical.

## Property Pack (OpenProperty)
```bash
git clone https://github.com/clawnify/OpenProperty.git
cd OpenProperty
pnpm install && pnpm dev
```
Docker example (adapt as needed):
```dockerfile
FROM node:20-alpine
WORKDIR /app
RUN npm install -g pnpm
COPY . .
RUN pnpm install
EXPOSE 5173
CMD ["pnpm", "dev", "--host"]
```

## Field Service Pack (OpenFieldPro)
```bash
git clone https://github.com/niko4244/openfieldpro.git
cd openfieldpro
# Follow repo README for Docker Compose / Podman
```

## POS / Vendor Pack (Posnic or MyCompany)
Self-host the chosen base and load sample catalog data.

See the main `docs/Packaging_Blueprints.md` for paid enhancement layers.
