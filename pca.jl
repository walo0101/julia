Pkg.add("MultivariateStats")
using MultivariateStats

pca = fit(PCA, data_ode; maxoutdim=11)
pca_data = predict(pca, data_ode)
pca_reconstdata = reconstruct(pca, pca_data)
